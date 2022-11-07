STAFFS

ALTER TABLE Staffs
   ADD CONSTRAINT Staff_pk PRIMARY KEY (staff_id);
   
 ALTER TABLE Staffs
   ADD CONSTRAINT contact_unique UNIQUE (contact_number);
   
ALTER TABLE Staffs
   ADD CONSTRAINT email_Check CHECK (email LIKE '@');
   

ROLES 
 ALTER TABLE roles
  ADD CONSTRAINT role_pk PRIMARY KEY (role_number);
  
  
STAFF_ROLES	
 ALTER TABLE staff_roles
  ADD CONSTRAINT STAFF_ROLE_PK PRIMARY KEY (staff_id,role_number);
  
  ALTER TABLE staff_roles
  ADD CONSTRAINT staff_fK FOREIGN KEY (staff_id) REFERENCES staffS ;
  
ALTER TABLE staff_roles
   ADD CONSTRAINT role_fK FOREIGN KEY (role_number) REFERENCES roles ;
   

ACTIVITIES
ALTER TABLE Activities
  ADD CONSTRAINT activity_pk PRIMARY KEY (activity_name);



RESOURCES
ALTER TABLE resources
  ADD CONSTRAINT item_pk PRIMARY KEY (item_id);

ALTER TABLE resources
  ADD CONSTRAINT item_name_unique UNIQUE (item_name);
  
  
 ACTIVITY_RESOURCES 
 ALTER TABLE activity_resources
    ADD CONSTRAINT activity_item_pk PRIMARY KEY (activity_name, item_id);


ALTER TABLE activity_resources
  ADD CONSTRAINT activity_fk FOREIGN KEY (activity_name) REFERENCES activities;


ALTER TABLE activity_resources
  ADD CONSTRAINT item_fk FOREIGN KEY (item_id) REFERENCES resources;

  

COSTS
ALTER TABLE costs
  ADD CONSTRAINT cost_pk primary key (cost_id);
  
  
  
  GROUPS
ALTER TABLE groups
    ADD CONSTRAINT group_pk PRIMARY KEY (group_number);
	
ALTER TABLE groups
    ADD CONSTRAINT activity_group_fk FOREIGN KEY (activity_name) REFERENCES activities(activity_name);
	
ALTER TABLE groups
    ADD CONSTRAINT staff_group_fk FOREIGN KEY (staff_id) REFERENCES Staffs(staff_id);
	
ALTER TABLE groups
    ADD CONSTRAINT role_group_fk FOREIGN KEY (role_number) REFERENCES roles(role_number);
	
ALTER TABLE groups
    ADD CONSTRAINT group_unique UNIQUE (GROUP_NAME);
	
	
  
  STAGES
ALTER TABLE stages
    ADD CONSTRAINT stage_pk PRIMARY KEY (stage_number);
  
  
  PLANS
ALTER TABLE plans
    ADD CONSTRAINT plan_pk PRIMARY KEY (plan_id);
	
ALTER TABLE plans
    ADD CONSTRAINT activity_plan_fk FOREIGN KEY (activity_name) REFERENCES activities(activity_name);
	
ALTER TABLE plans
    ADD CONSTRAINT stage_fk FOREIGN KEY (stage_number) REFERENCES stages(stage_number);
  
  
  REVIEWS
ALTER TABLE reviews
    ADD CONSTRAINT review_pk PRIMARY KEY (review_number);
	
ALTER TABLE reviews
    ADD CONSTRAINT plan_fk FOREIGN KEY (plan_number) REFERENCES plans(plan_id);
	
ALTER TABLE reviews
    ADD CONSTRAINT group_fk FOREIGN KEY (group_id) REFERENCES groups(group_number);
	
	
  
  
  ACTIONS
ALTER TABLE actions
    ADD CONSTRAINT output_pk PRIMARY KEY (output_number);
 
ALTER TABLE actions
    ADD CONSTRAINT review_fk FOREIGN KEY (review_number) REFERENCES reviews(review_number);
	
