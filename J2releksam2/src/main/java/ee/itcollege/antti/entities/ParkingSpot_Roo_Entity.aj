// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.antti.entities;

import ee.itcollege.antti.entities.ParkingSpot;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ParkingSpot_Roo_Entity {
    
    declare @type: ParkingSpot: @Entity;
    
    @PersistenceContext
    transient EntityManager ParkingSpot.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long ParkingSpot.id;
    
    @Version
    @Column(name = "version")
    private Integer ParkingSpot.version;
    
    public Long ParkingSpot.getId() {
        return this.id;
    }
    
    public void ParkingSpot.setId(Long id) {
        this.id = id;
    }
    
    public Integer ParkingSpot.getVersion() {
        return this.version;
    }
    
    public void ParkingSpot.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void ParkingSpot.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ParkingSpot.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ParkingSpot attached = ParkingSpot.findParkingSpot(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ParkingSpot.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ParkingSpot.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ParkingSpot ParkingSpot.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ParkingSpot merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager ParkingSpot.entityManager() {
        EntityManager em = new ParkingSpot().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ParkingSpot.countParkingSpots() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ParkingSpot o", Long.class).getSingleResult();
    }
    
    public static List<ParkingSpot> ParkingSpot.findAllParkingSpots() {
        return entityManager().createQuery("SELECT o FROM ParkingSpot o", ParkingSpot.class).getResultList();
    }
    
    public static ParkingSpot ParkingSpot.findParkingSpot(Long id) {
        if (id == null) return null;
        return entityManager().find(ParkingSpot.class, id);
    }
    
    public static List<ParkingSpot> ParkingSpot.findParkingSpotEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ParkingSpot o", ParkingSpot.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
