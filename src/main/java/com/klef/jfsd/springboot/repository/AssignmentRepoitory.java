package com.klef.jfsd.springboot.repository;

import org.springframework.data.repository.CrudRepository;

import com.klef.jfsd.springboot.model.Assignment;

public interface AssignmentRepoitory extends CrudRepository<Assignment,Integer> {

}