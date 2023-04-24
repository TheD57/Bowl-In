package org.acme.api.service;

import javax.enterprise.context.ApplicationScoped;

import org.acme.hibernates.entities.ThrowEntity;

import io.quarkus.hibernate.reactive.panache.PanacheRepository;

@ApplicationScoped
public class ThrowRepository implements PanacheRepository<ThrowEntity> {

}