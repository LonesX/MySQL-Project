# Hospital Database 

Tables:
1. candidate - Has basic candidates information which includes the following attributes:
    a. idcandidate – INT (PRIMARY KEY)
    b. firstname – VARCHAR
    c. surname – VARCHAR
    d. address – VARCHAR
    e. telephone_number – DECIMAL
    
2. hospital - Has basic hospital information which includes the following attributes:
    a. idhospital – INT (PRIMARY KEY)
    b. hospitalName – VARCHAR
    c. address – VARCHAR
    d. telephoneNumber – DECIMAL
    
3. position - Has basic position information which includes the following attributes:
    a. idposition – INT (PRIMARY KEY)
    b. position_type – VARCHAR
 
4. skills - Includes different skills and has many-to-many relationship with position and 
candidate tables.
    i.e, each candidate can have many skills and the same skill can be possessed by many
    candidates.
    Ex: Skills: Teamwork, Nursing skills.
    position: A Nurse job might require having both Teamwork and Nursing skills.
    candidate: A candidate applying for the above position might have both Teamwork,
    nursing skills in addition to many more skills
    This table has the following attributes:
    a. idskills – int (PRIMARY KEY)
    b. skillname – VARCHAR

5. candidateskills – This table was the results of many-to-many relationship between 
the skills and candidate tables. Therefore, the primary keys of these tables together 
form the primary key of the candidate skills table as shown below:
    a. candidateid – INT (PRIMARY KEY) – FOREIGN KEY referencing idcandidate in the
    candidate table.
    b. Skillid – INT (PRIMARY KEY) – FOREIGN KEY referencing idskills in the skills table.
    
6. positionskills – This table was the result of many-to-many relationship between the 
skills and position tables. Therefore the primary keys of these two tables together 
form the primary key of the position skills table as shown below:
    a. positionid – INT (PRIMARY KEY) – FOREIGN KEY referencing idposition in the 
    position table.
    b. Skillsid – INT (PRIMARY KEY) – FOREIGN KEY referencing idskills in the skills 
    table 
    
7. positionofferedbyhospital – This table was the result of many-to-many relationship 
between position and hospital tables.
i.e, a position can be offered by different hospitals and each hospital can offer 
different positions.
Ex: position: Nursing is a position offered by different hospitals like tallaght hospital,
dundrum hospital etc 
hospital: A hospital can offer different positions in it.
Therefore, the primary keys of these two tables together form the primary key of the 
positionofferedbyhospital table as shown below:
    a. positionsid – INT (PRIMARY KEY) – FOREIGN KEY referencing idposition in the 
    position table.
    b. hospitalsid – INT (PRIMARY KEY) – FOREIGN KEY referencing idhospital in the 
    hospital table.
    
8. interview – This is a weak entity whose corresponding strong entity is position. 
Because if a position doesn’t exist, there will be no interview. Which this allow 
hospital to request many interviews for a position, And here we have interviewdate 
and idposition as the primary key as shown below:
    a. interviewdate – DATE (PRIMARY KEY)
    c. idposition – INT (PRIMARY KEY) – FOREIGN KEY referencing idposition in the 
    position table.
    
9. Invite – A candidate is invited to an interview and he/she may or may not be hired. 
This information is stored in the invite table. This table is a relationship between the 
interview and the candidate table and has its own attribute – ishired. Hence forming 
this new table taking the primary keys of both interview and candidate tables as 
Shown below:
    a. candidatesid – INT (PRIMARY KEY) – FOREIGN KEY referencing idcandidate in 
    the candidate table.
    b. Interviewforposition – INT (PRIMARY KEY) – FOREIGN KEY referencing 
    idposition in the interview table.
    c. Dateofinterview – DATE (PRIMARY KEY) – FOREIGN KEY referencing 
    interviewdate in the interview table.
    d. Ishired – VARCHAR – VALUES: YES or NO.
    
ASSUMPTIONS MADE:
All the assumptions and additions are already described in the
table descriptions above. But have stressed the below points for clear
understanding:
1. A position can be offered by various hospitals and each hospital can offer different 
positions.
EX: Position: Occupational therapist is a position offered by various departments like 
– tallaght hospital, dundrum hospital etc.
Hospital: A hospital can offer various positions like nursing, pharmacists etc
2. If a position doesn’t exist, their will be no interview.
3. Interpreted ‘ One hospital can hire many candidates in relation to a position ‘ as ‘One 
hospital can interview any candidates in relation to a position ‘. Ans hence used 
ishired as an attribute in the interview table instead of creating separate table for it.
4. As a result of the above-mentioned assumptions and also as described under each 
table, added various new tables to represent the many to many relationships, weak 
entity – strong entity relationships.

Reaction Policies Used
- On Delete No Action and On Update No Action which are the same as default –
restrict.
- Reason: I don’t want any primary keys being updated or deleted if they are 
referenced by other tables. For example if you removed the ID for a hospitalID 
that is referenced to the hospitalIDskills then we won’t be able to know which 
hospital haves that skill as the ID from the hospital that contains the name 
doesn’t exist anymore.
