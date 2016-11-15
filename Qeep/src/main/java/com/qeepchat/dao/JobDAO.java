package com.qeepchat.dao;

import java.util.List;

import com.qeepchat.model.Job;
import com.qeepchat.model.JobApplication;

public interface JobDAO {
	public boolean postJob(Job job);
	public boolean updateJob(Job job);
	public List<Job> getAllVacantJobs();
	public boolean applyForJob(JobApplication jobApplication);
	public boolean updateJobApplication(JobApplication jobApplication);
	public JobApplication get(int id, int c_id);
	public JobApplication getMyAppliedJobs(int id);

}
