package com.qeepchat.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qeepchat.model.Job;
import com.qeepchat.model.JobApplication;
@Repository
public class JobDAOImpl implements JobDAO {
	public JobDAOImpl() {

	}
	@Autowired(required=true)
	private SessionFactory sessionFactory;
	
	public JobDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}

	public boolean postJob(Job job) {
		try{
			sessionFactory.getCurrentSession().save(job);
		}catch(HibernateException e){
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean updateJob(Job job) {
		try{
			sessionFactory.getCurrentSession().update(job);
		}catch(HibernateException e){
			e.printStackTrace();
			return false;
		}
				
		return true;
	}

	@SuppressWarnings("unchecked")
	public List<Job> getAllVacantJobs() {
		String hql="from Job where status ='V'";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
	}

	public boolean applyForJob(JobApplication jobApplication) {
		try{
			sessionFactory.getCurrentSession().save(jobApplication);
		}catch(HibernateException e){
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean updateJobApplication(JobApplication jobApplication) {
		try{
			sessionFactory.getCurrentSession().update(jobApplication);
		}catch(HibernateException e){
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public JobApplication get(int id, int c_id) {
		String hql ="from JobApplication where id='"+id+"' and c_id='"+c_id+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		return (JobApplication) query.list();
	}

	public JobApplication getMyAppliedJobs(int id) {
		String hql ="from JobApplication where id='"+id+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		return (JobApplication) query.list();
	}

}
