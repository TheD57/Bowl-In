package org.acme.Api.service;

import java.util.List;

import javax.enterprise.context.ApplicationScoped;

import org.acme.Hibernates.entities.GameEntity;
import org.acme.Hibernates.entities.RoundEntity;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import io.smallrye.mutiny.Uni;

@ApplicationScoped
public class RoundRepository implements PanacheRepository<RoundEntity> {

    public List<RoundEntity> findByGameId(Long gameId) {
        return find("game.id", gameId).list();
    }

}
