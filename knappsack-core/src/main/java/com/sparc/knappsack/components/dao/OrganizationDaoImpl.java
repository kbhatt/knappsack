package com.sparc.knappsack.components.dao;

import com.sparc.knappsack.components.entities.Organization;
import com.sparc.knappsack.components.entities.QOrganization;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("organizationDao")
public class OrganizationDaoImpl extends BaseDao implements OrganizationDao {
    QOrganization organization = QOrganization.organization;

    @Override
    public void add(Organization organization) {
        getEntityManager().persist(organization);
    }

    @Override
    public Organization get(Long id) {
        return getEntityManager().find(Organization.class, id);
    }

    @Override
    public void delete(Organization organization) {
        getEntityManager().remove(getEntityManager().merge(organization));
    }

    @Override
    public void update(Organization organization) {
        getEntityManager().merge(organization);
    }

    @Override
    public List<Organization> getAll() {
        return query().from(organization).list(organization);
    }

    public Organization get(String name) {
        return query().from(organization).where(organization.name.equalsIgnoreCase(name)).uniqueResult(organization);
    }
}
