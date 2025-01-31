
---------20250131
SELECT * from app_fd_ds_doc_order_trail
where 
createdBy = '$JOGETUSERNAME' and 
( c_request_id = (
    SELECT ID FROM app_fd_ds_document_order 
    where c_doc_id='R-INT-2501-000053'
    )
);

-- backup
7a96828e-702d-45ee-8d16-68dfe4cad39c	2025-01-31 08:37:57.8270000	2025-01-31 08:37:57.8270000	Aris	Sebastianus Aris Yulianto	Aris	Sebastianus Aris Yulianto		adjusted by - Aris			50727011-413e-4917-82d6-d5f2663f6a4a
9e877457-ff7d-45b1-8a3b-c01db7b8d16f	2025-01-30 16:50:42.7380000	2025-01-30 16:50:42.7380000	Aris	Sebastianus Aris Yulianto	Aris	Sebastianus Aris Yulianto		adjusted by - Aris			50727011-413e-4917-82d6-d5f2663f6a4a
1d34d317-383c-4a7d-bfa0-788b727ad0bc	2025-01-30 16:50:22.6920000	2025-01-30 16:50:22.6920000	Aris	Sebastianus Aris Yulianto	Aris	Sebastianus Aris Yulianto		adjusted by - Aris			50727011-413e-4917-82d6-d5f2663f6a4a

delete from app_fd_ds_doc_order_trail 
where 
createdBy = 'Aris' and 
( c_request_id = (
    SELECT ID FROM app_fd_ds_document_order 
    where c_doc_id='R-INT-2501-000053'
    )
)
AND NOT id='7a96828e-702d-45ee-8d16-68dfe4cad39c'


