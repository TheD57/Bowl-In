package org.acme.api.dto;

import io.quarkus.runtime.annotations.RegisterForReflection;
import org.eclipse.microprofile.openapi.annotations.media.Schema;

@RegisterForReflection
@Schema(description = "A DTO for transferring user details")
public class UserDto {

    public Long id;
    public String name;
    public String image;
    public String mail;
    //public UserStatsDTO stats;

    public UserDto(Long id, String name, String image, String mail) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.mail = mail;
    }

    /*public UserDTO(Long id, String name,
            @ProjectedFieldName("stats.nbVictories") Long nbVictories,
            @ProjectedFieldName("stats.nbGames") Long nbGames,
            @ProjectedFieldName("stats.highscore") Long highscore,
            @ProjectedFieldName("stats.nbStrikes") Long nbStrikes,
            @ProjectedFieldName("stats.nbSpares") Long nbSpares,
            @ProjectedFieldName("stats.avgScore") Double avgScore,
            @ProjectedFieldName("stats.avgPinsPerRound") Double avgPinsPerRound) {
        this.id = id;
        this.name = name;
        this.stats = new UserStatsDTO(nbVictories, nbGames, highscore, nbStrikes, nbSpares, avgScore, avgPinsPerRound);
    }*/
}