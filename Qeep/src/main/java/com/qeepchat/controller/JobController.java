/*package com.qeepchat.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import com.qeepchat.model.Job;
import com.qeepchat.model.JobApplication;
import com.qeepchat.service.JobService;

@RestController
public class JobController {
 @Autowired(required=true)
 JobService jobService;
 @Autowired(required=true)
 Job job;
 @Autowired(required=true)
 JobApplication jobApplication;
 @RequestMapping(value= "/job", method = RequestMethod.POST)
	public ResponseEntity<Void> postJob(@RequestBody Job job, UriComponentsBuilder builder) {
     boolean flag = jobService.postJob(job);
            if (flag == false) {
     	  return new ResponseEntity<Void>(HttpStatus.CONFLICT);
            }
            HttpHeaders headers = new HttpHeaders();
            headers.setLocation(builder.path("/job/{c_id}").buildAndExpand(job.getC_id()).toUri());
            return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
	}
	

	@RequestMapping(value="/job/{c_id}", method = RequestMethod.PUT )
	public ResponseEntity<Job> update(@RequestBody Job job) {
		jobService.updateJob(job);
		return new ResponseEntity<Job>(job, HttpStatus.OK);
	}
	
	@RequestMapping(value= "/job", method = RequestMethod.GET)
	public ResponseEntity<List<Job>> getAllVacantJobs() {
		List<Job> list = jobService.getAllVacantJobs();
		return new ResponseEntity<List<Job>>(list, HttpStatus.OK);
	}
	 @RequestMapping(value= "/applyjob", method = RequestMethod.POST)
		public ResponseEntity<Void> applyForJob(@RequestBody JobApplication jobApplication, UriComponentsBuilder builder) {
	     boolean flag = jobService.applyForJob(jobApplication);
	            if (flag == false) {
	     	  return new ResponseEntity<Void>(HttpStatus.CONFLICT);
	            }
	            HttpHeaders headers = new HttpHeaders();
	            headers.setLocation(builder.path("/applyjob/{job_id}").buildAndExpand(jobApplication.getJob_id()).toUri());
	            return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
		}
		

		@RequestMapping(value="/updatejobapplication/{c_id}", method = RequestMethod.PUT )
		public ResponseEntity<Job> updateJobApplicationws(@RequestBody JobApplication jobApplication) {
			jobService.updateJobApplication(jobApplication);
			
			return new ResponseEntity<Job>(HttpStatus.OK);
		}
		
	
}
*/