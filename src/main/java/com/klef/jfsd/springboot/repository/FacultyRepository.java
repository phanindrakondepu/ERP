package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Faculty;
import java.util.List;


@Repository
public interface FacultyRepository extends JpaRepository<Faculty, Integer>
{
	
}
