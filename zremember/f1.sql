
BLOCK1: BEGIN

   -- Declare loop constructs --
    DECLARE done INT DEFAULT FALSE; 

  DECLARE a_id INT(11); 
  DECLARE a_officine_num_am VARCHAR(255) ;
  DECLARE a_officine_raison_sociale VARCHAR(255) ;
  DECLARE a_pharma_rpps VARCHAR(255) ;
  DECLARE a_pharma_nom VARCHAR(255) ;
  DECLARE a_assure_nir VARCHAR(255) ;
  DECLARE a_assure_nir_cle VARCHAR(255) ;
  DECLARE a_assure_nom VARCHAR(255) ;
  DECLARE a_assure_prenom VARCHAR(255) ;
  DECLARE a_assure_date_naissance VARCHAR(255) ;
  DECLARE a_assure_rang_naissance tinyint(2) ;
  DECLARE a_assure_regime VARCHAR(255) ;
  DECLARE a_information_medecin tinyint(1) ;
  DECLARE a_medecin_traitant_nom VARCHAR(255) ;
  DECLARE a_medecin_prescri_nom VARCHAR(255) ;
  DECLARE a_mode_recrutement VARCHAR(255) ;
  DECLARE a_accord_patient tinyint(1) ;
  DECLARE a_date_adhesion DATETIME ;
  DECLARE a_date_derniere_modif DATETIME ;
  
  DECLARE e_id INT(11); 
  DECLARE e_asthme_adhesion_id INT(11); 
  DECLARE e_pharma_nom VARCHAR(255) ;
  DECLARE e_date_entretien DATETIME ;
  DECLARE e_date_ajout_entretient DATETIME ;
    
  DECLARE cur1 CURSOR FOR SELECT * FROM asthme_adhesions WHERE asthme_adhesions.id > 4100 ;

  -- Declare Continue Handler --
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
  OPEN cur1;
  read_loop: LOOP
	 
    FETCH cur1 INTO a_id, a_officine_num_am, a_officine_raison_sociale, a_pharma_rpps, a_pharma_nom, a_assure_nir, a_assure_nir_cle, a_assure_nom, a_assure_prenom, a_assure_date_naissance, a_assure_rang_naissance, a_assure_regime, a_information_medecin, a_medecin_traitant_nom, a_medecin_prescri_nom, a_mode_recrutement, a_accord_patient, a_date_adhesion, a_date_derniere_modif;

    -- Exit loop if finished --
        IF done THEN
            LEAVE read_loop;
        END IF;

    INSERT INTO adhesions (type, officine_num_am, officine_raison_sociale, pharma_rpps, pharma_nom, assure_nir, assure_nir_cle, assure_nom, assure_prenom, assure_date_naissance, assure_rang_naissance, assure_regime, information_medecin, medecin_traitant_nom, medecin_prescri_nom, mode_recrutement, accord_patient, date_adhesion, date_derniere_modif) 
	   VALUES 
	   ('ASTHME', a_officine_num_am, a_officine_raison_sociale, a_pharma_rpps, a_pharma_nom, a_assure_nir, a_assure_nir_cle, a_assure_nom, a_assure_prenom, a_assure_date_naissance, a_assure_rang_naissance, a_assure_regime, a_information_medecin, a_medecin_traitant_nom, a_medecin_prescri_nom, a_mode_recrutement, a_accord_patient, a_date_adhesion, a_date_derniere_modif);
     
     SET @last_inserted = LAST_INSERT_ID() ;
      BLOCK2: BEGIN
        DECLARE done2 INT DEFAULT FALSE; 

         DECLARE cur2 CURSOR FOR SELECT * FROM asthme_entretiens WHERE asthme_adhesion_id = a_id ;
         DECLARE CONTINUE HANDLER FOR NOT FOUND SET done2 = TRUE;
         OPEN cur2;
         read_loop2: LOOP  
            FETCH cur2 INTO e_id, e_asthme_adhesion_id, e_pharma_nom, e_date_entretien, e_date_ajout_entretient ;
            IF done2 THEN
              LEAVE read_loop2;
            END IF;
                INSERT INTO entretiens (type, adhesion_id, pharma_nom, date_entretien, date_ajout_entretient) 
                 VALUES 
                ('ASTHME', @last_inserted, e_pharma_nom, e_date_entretien, e_date_ajout_entretient);

            END LOOP read_loop2;
          CLOSE cur2;
        END BLOCK2 ;

  END LOOP;
  CLOSE cur1;
END BLOCK1