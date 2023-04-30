package org.acme.api.mapper;

import java.util.List;

import org.acme.api.dto.RoundDTO;
import org.acme.hibernates.entities.RoundEntity;
import org.acme.hibernates.entities.ThrowEntity;

public class RoundMapper {

    public static RoundDTO toDto(RoundEntity entity) {
        List<ThrowEntity> throwsGame = entity.throwsGame;
        int val1 = 0;
        int val2 = 0;

        if (throwsGame.size() > 0) {
            val1 = throwsGame.get(0).pins;
        }
        if (throwsGame.size() > 1) {
            val1 = throwsGame.get(1).pins;
        }

        return new RoundDTO(entity.participe.id.position, 0, val1, val2, entity.points);
    }
}
