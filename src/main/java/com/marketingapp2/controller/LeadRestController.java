package com.marketingapp2.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.marketingapp2.dto.LeadDto;
import com.marketingapp2.entity.Lead;
import com.marketingapp2.repository.LeadRepository;

@RestController
@RequestMapping("/api/leads")
public class LeadRestController {
	 //http://localhost:8080/api/leads
	@Autowired
	private LeadRepository leadRepo;
	@GetMapping
	public List<Lead> getAllLeads() {
		List<Lead> leads = leadRepo.findAll();
		return leads;
	}
	@PostMapping
	public void saveLead(@RequestBody Lead lead) {
		leadRepo.save(lead);
		
	}
	//

	@PutMapping
	public void updateLead(
			@RequestParam("id")long id,
			
			@RequestBody LeadDto dto) {
		Optional<Lead> findById = leadRepo.findById(id);
		Lead lead =findById.get();
		lead.setFirstName(dto.getFirstName());
		lead.setLastName(dto.getLastName());
		lead.setEmail(dto.getEmail());
		lead.setMobile(dto.getMobile());
		
		leadRepo.save(lead);
		
	}
	@DeleteMapping("/{id}")
	public ResponseEntity<String> deleteLead(@PathVariable("id")long id) {
		leadRepo.deleteById(id);
		return new ResponseEntity<>("Record is deleted",HttpStatus.OK);
		
	}
	
	
	
	

}
