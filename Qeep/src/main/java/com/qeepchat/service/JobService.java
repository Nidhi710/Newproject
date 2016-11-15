/*package com.qeepchat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qeepchat.dao.JobDAOImpl;
import com.qeepchat.model.Job;
import com.qeepchat.model.JobApplication;

@Service
@Transactional
public class JobService {
	@Autowired(required=true)
JobDAOImpl jobDAO;
	
	
	public boolean postJob(Job job) {
		return jobDAO.postJob(job);
	}
	
	public boolean updateJob(Job job) {
		return jobDAO.updateJob(job);
	}
	
	public List<Job> getAllVacantJobs() {
		return jobDAO.getAllVacantJobs();
	}
	
	public List<Job> getAllJobs() {
		return jobDAO.getAllJobs();
	}
	
	public boolean applyForJob(JobApplication jobApplication) {
		return jobDAO.applyForJob(jobApplication);
	}
	
	public boolean updateJobApplication(JobApplication jobApplication) {
		
		return jobDAO.updateJobApplication(jobApplication);
	}
	
	public JobApplication get(int id, int c_id) {
		return jobDAO.get(id, c_id);
	}
	
	public JobApplication getMyAppliedJobs(int id) {
		return jobDAO.getMyAppliedJobs(id);
	}


}
*/