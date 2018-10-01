package com.startup.model;

import lombok.Builder;
import lombok.Data;

/**
 * Created by vamsi on 10/1/18.
 */
@Data
@Builder
public class FatToFitJourney {
    private String userName;
    private String email;
    private String description;
}
