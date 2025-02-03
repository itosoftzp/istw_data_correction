
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

-- setelah itu majukan flow sesuai adjust by pada user approval selanjutnya  
-- dan ubah counter adjust sesuai dengan jumlah user adjust


-----20250203

---- fix adjust by duplicate 
SELECT * from app_fd_ds_doc_order_trail
where 
createdBy = 'Aris' and 
( c_request_id = (
    SELECT ID FROM app_fd_ds_document_order 
    where c_doc_id='R-INT-2501-000066'
    )
);

---- backup 
id	dateCreated	dateModified	createdBy	createdByName	modifiedBy	modifiedByName	c_history_text	c_action_name	c_remark	c_history_json	c_request_id
9faa59f9-9db8-41ab-87b5-13b65005df4f	2025-01-31 12:29:48.5850000	2025-01-31 12:29:48.5850000	Aris	Sebastianus Aris Yulianto	Aris	Sebastianus Aris Yulianto		adjusted by - Aris			ebdcccc3-b864-44e5-b3bb-2e66c69a7bf8
aa8ccffb-83a9-4698-afb6-e970aaece286	2025-02-03 08:14:00.1700000	2025-02-03 08:14:00.1700000	Aris	Sebastianus Aris Yulianto	Aris	Sebastianus Aris Yulianto		adjusted by - Aris			ebdcccc3-b864-44e5-b3bb-2e66c69a7bf8
e549375b-2555-418b-8d06-d802a82b9889	2025-01-31 12:29:34.2600000	2025-01-31 12:29:34.2600000	Aris	Sebastianus Aris Yulianto	Aris	Sebastianus Aris Yulianto		adjusted by - Aris			ebdcccc3-b864-44e5-b3bb-2e66c69a7bf8


delete from app_fd_ds_doc_order_trail 
where 
createdBy = 'Aris' and 
( c_request_id = (
    SELECT ID FROM app_fd_ds_document_order 
    where c_doc_id='R-INT-2501-000066'
    )
)
AND NOT id='aa8ccffb-83a9-4698-afb6-e970aaece286'


--- fix ttd hilang 
SELECT * FROM app_fd_ds_document_order WHERE c_doc_id = 'R-INT-2501-000066';

SELECT c_hide_adjust_by_signature FROM app_fd_ds_document_order WHERE c_doc_id = 'R-INT-2501-000066';

--- backup
c_hide_adjust_by_signature
yes


--- check 
SELECT 
    COUNT(*) AS total_records,
    COUNT(DISTINCT c_hide_adjust_by_signature) AS distinct_signature_count,
    COUNT(CASE WHEN c_hide_adjust_by_signature = '' THEN 1 END) AS empty_signature_count,
    COUNT(CASE WHEN c_hide_adjust_by_signature IS NULL THEN 1 END) AS null_signature_count
FROM app_fd_ds_document_order;


--- result 
total_records	distinct_signature_count	empty_signature_count	null_signature_count
179	2	42	117

--- value c_hide_adjust_by_signature
select distinct c_hide_adjust_by_signature from app_fd_ds_document_order;
--- result
c_hide_adjust_by_signature
NULL

yes


--- untuk memunculkan ttd
update app_fd_ds_document_order
set c_hide_adjust_by_signature = ''
where c_doc_id = 'R-INT-2501-000066';
