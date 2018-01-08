/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author I342042
 */
@Stateless
public class CarsFacade extends AbstractFacade<Cars> {

    @PersistenceContext(unitName = "OnlineStorePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CarsFacade() {
        super(Cars.class);
    }
    
}
