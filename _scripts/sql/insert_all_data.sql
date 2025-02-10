
-- Insert example records into various tables after they've been created.

-- Insert example tags
insert into Tag 
    ( id  , name      ) values
    (   1 , 'Errands'   ),
    (   2 , 'Family'    ),
    (   3 , 'Health'    ),
    (   4 , 'Home'      ),
    (   5 , 'Important' ),
    (   6 , 'Meetings'  ),
    (   7 , 'Personal'  ),
    (   8 , 'Shopping'  ),
    (   9 , 'Urgent'    ),
    (  10 , 'Work'      );

-- Insert example tasks
insert into Task
    ( id , title              , description                   , completed ) values
    (  1 , 'Finish Flask app' , 'Complete the Flask todo app' ,         0 ),
    (  2 , 'Buy groceries'    , 'Milk, Eggs, Bread'           ,         0 ),
    (  3 , 'Call mom'         , 'Ask her how she is doing'    ,         1 ),
    (  4 , 'Complete report'  , 'Finish the quarterly report' ,         0 ),
    (  5 , 'Water plants'     , 'Water the garden plants'     ,         0 );

 -- Insert example task-tag relationships
 insert into TaskTag
     ( task_id , tag_id ) values
     ( 1       , 10     ),
     ( 1       ,  9     ),
     ( 2       ,  7     ),
     ( 3       ,  7     ),
     ( 4       , 10     ),
     ( 5       ,  7     ),
     ( 5       ,  9     );
