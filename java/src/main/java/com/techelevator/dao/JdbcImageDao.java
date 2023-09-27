package com.techelevator.dao;

import com.techelevator.dao.mapper.ImageMapper;
import com.techelevator.model.Image;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class JdbcImageDao implements ImageDao{

    private final JdbcTemplate jdbcTemplate;
    private final ImageMapper imageMapper = new ImageMapper();
    public JdbcImageDao(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public int uploadImage(String fileName, byte[] data) {
        String sql = "INSERT INTO images (filename, image_data) VALUES " +
                "(?, ?) RETURNING image_id;";
        int imageId = jdbcTemplate.queryForObject(sql, Integer.class, fileName, data);
        return imageId;
    }

    @Override
    public Image getBandImageById(int imageId) {
        String sql = "SELECT * FROM images WHERE image_id = ?;";
        try {
            return jdbcTemplate.queryForObject(sql, imageMapper, imageId);
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    @Override
    public Image getCoverImageByBandId(int bandId) {
        String sql = "SELECT * FROM images JOIN bands ON (images.image_id = " +
                "bands.band_image_id) WHERE band_id = ?;";
        try{
            return jdbcTemplate.queryForObject(sql, imageMapper, bandId);
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    @Override
    public Integer addCoverImageToBand(int imageId, int bandId) {
        String sql = "UPDATE bands SET band_image_id = ? WHERE band_id = ?;";
        try{
            int rowsUpdated = jdbcTemplate.update(sql, imageId, bandId);
            if(rowsUpdated == 1) {
                return rowsUpdated;
            } else {
                return null;
            }
        }catch (DataAccessException e) {
            return null;
        }
    }
}
