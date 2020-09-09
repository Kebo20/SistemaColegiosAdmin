/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.IllegalOrphanException;
import Controladores.exceptions.NonexistentEntityException;
import java.io.Serializable;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import Entidades.Ano;
import Entidades.Periodo;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author kevin
 */
public class PeriodoJpaController implements Serializable {

    private static EntityManagerFactory emf;
    private static EntityManager em;
    public PeriodoJpaController() {
       emf = Persistence.createEntityManagerFactory("colegiosPU");
        em = emf.createEntityManager();
    }
    
 public void editar(Periodo p){
        

        try {
            
            em.getTransaction().begin();
            
            em.merge(p);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }
   
    public void create(Periodo periodo) {
    
        try {
            
            em.getTransaction().begin();
            Ano idano = periodo.getIdano();
            if (idano != null) {
                idano = em.getReference(idano.getClass(), idano.getId());
                periodo.setIdano(idano);
            }
         
            em.persist(periodo);
            if (idano != null) {
                idano.getPeriodoList().add(periodo);
                idano = em.merge(idano);
            }
       
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Periodo periodo) throws IllegalOrphanException, NonexistentEntityException, Exception {
       
        try {
            
            em.getTransaction().begin();
            Periodo persistentPeriodo = em.find(Periodo.class, periodo.getId());
            Ano idanoOld = persistentPeriodo.getIdano();
            Ano idanoNew = periodo.getIdano();
          
            List<String> illegalOrphanMessages = null;
         
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            if (idanoNew != null) {
                idanoNew = em.getReference(idanoNew.getClass(), idanoNew.getId());
                periodo.setIdano(idanoNew);
            }
            
            periodo = em.merge(periodo);
            if (idanoOld != null && !idanoOld.equals(idanoNew)) {
                idanoOld.getPeriodoList().remove(periodo);
                idanoOld = em.merge(idanoOld);
            }
            if (idanoNew != null && !idanoNew.equals(idanoOld)) {
                idanoNew.getPeriodoList().add(periodo);
                idanoNew = em.merge(idanoNew);
            }
       
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Integer id = periodo.getId();
                if (findPeriodo(id) == null) {
                    throw new NonexistentEntityException("The periodo with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Integer id) throws IllegalOrphanException, NonexistentEntityException {
       
        try {
            
            em.getTransaction().begin();
            Periodo periodo;
            try {
                periodo = em.getReference(Periodo.class, id);
                periodo.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The periodo with id " + id + " no longer exists.", enfe);
            }
            List<String> illegalOrphanMessages = null;
        
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            Ano idano = periodo.getIdano();
            if (idano != null) {
                idano.getPeriodoList().remove(periodo);
                idano = em.merge(idano);
            }
            em.remove(periodo);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Periodo> findPeriodoEntities() {
        return findPeriodoEntities(true, -1, -1);
    }

    public List<Periodo> findPeriodoEntities(int maxResults, int firstResult) {
        return findPeriodoEntities(false, maxResults, firstResult);
    }

    private List<Periodo> findPeriodoEntities(boolean all, int maxResults, int firstResult) {
       
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Periodo.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public Periodo findPeriodo(Integer id) {
        
        try {
            return em.find(Periodo.class, id);
        } finally {
            em.close();
        }
    }

    public int getPeriodoCount() {
       
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Periodo> rt = cq.from(Periodo.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
