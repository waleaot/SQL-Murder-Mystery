

 
 
 select * 
   from crime_scene_report
   where crime_type = 'murder'
   and
   city = 'SQL City'
   and 
   date = 20180115;
   
/*
Security footage shows that there were 2 witnesses. 
The first witness lives at the last house on "Northwestern Dr". 
The second witness, named Annabel, lives somewhere on "Franklin Ave". */

	select * from person
		 where address_street_name = 'Northwestern Dr'
		 order by address_number desc
		 limit 1;


select * 
    from person
	where name like '%Annabel%'
	and address_street_name = 'Franklin Ave'
	 


select *
  from interview
  where person_id in (16371,14887)
  
  
  
  
  select * 
   from get_fit_now_member
    where id like '48Z%'
	and membership_status = 'gold'

intersect

 select * 
   from get_fit_now_member
   where id in ( select membership_id
			   from get_fit_now_check_in
			   where check_in_date = 20180109)
  
  
  
 select * from person
 where id in (28819,67318)
 
 intersect 
 
 select * from person
 where license_id in ( select id 
 					from drivers_license 
 						where plate_number like '%H42W%');
						
						
select * 
  from interview
  where person_id = 67318;


select *  
    from person
	where license_id in ( select id 
    					from drivers_license
						where height between 65 and 67
						and 
						hair_color = 'red'
						and 
						car_make = 'Tesla'
						and
						car_model = 'Model S')
						
intersect 

select * from person 
where id in ( select person_id
   from facebook_event_checkin
   where event_name = 'SQL Symphony Concert');
					
