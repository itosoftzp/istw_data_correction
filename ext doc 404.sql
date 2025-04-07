R-EXT-2504-000004
'e625cf51-fd66-44dd-9c52-27c6904301bf/e625cf51-fd66-44dd-9c52-27c6904301bf'.pdf

R-EXT-2504-000003
'e26ffb9e-b653-4b00-8928-d83f7cac88c2/e26ffb9e-b653-4b00-8928-d83f7cac88c2'.pdf

R-EXT-2504-000002
'cfa84fb0-dab9-4934-bd0c-226d6fe8d98c/cfa84fb0-dab9-4934-bd0c-226d6fe8d98c'.pdf

R-EXT-2504-000001
'f96a0679-4333-4629-b86c-b8a6f0b85584/f96a0679-4333-4629-b86c-b8a6f0b85584'.pdf

R-EXT-2503-000044
'0d473793-1d1e-489a-a04c-f42c509f1cfe/0d473793-1d1e-489a-a04c-f42c509f1cfe'.pdf

R-EXT-2503-000043
'9e75e28c-f8d1-437f-b79d-1adb32a4afb6/9e75e28c-f8d1-437f-b79d-1adb32a4afb6'.pdf

R-EXT-2503-000042
'c2163889-8057-4b1c-b072-48d00c87d81e/c2163889-8057-4b1c-b072-48d00c87d81e'.pdf

R-EXT-2503-000041
'3c735a55-015e-4442-b780-7fa7b603ebc7/3c735a55-015e-4442-b780-7fa7b603ebc7'.pdf

-- check document external status

select distinct c_status from app_fd_ds_document_order;


select distinct c_status from app_fd_ds_tilaka_api_signs;

select c_status, id from app_fd_ds_document_order where id in (
'e625cf51-fd66-44dd-9c52-27c6904301bf',
'e26ffb9e-b653-4b00-8928-d83f7cac88c2',
'cfa84fb0-dab9-4934-bd0c-226d6fe8d98c',
'f96a0679-4333-4629-b86c-b8a6f0b85584',
'0d473793-1d1e-489a-a04c-f42c509f1cfe',
'9e75e28c-f8d1-437f-b79d-1adb32a4afb6',
'c2163889-8057-4b1c-b072-48d00c87d81e',
'3c735a55-015e-4442-b780-7fa7b603ebc7'
);


select c_status, id from app_fd_ds_tilaka_api_signs where c_tilaka_request_id in (
'e625cf51-fd66-44dd-9c52-27c6904301bf',
'e26ffb9e-b653-4b00-8928-d83f7cac88c2',
'cfa84fb0-dab9-4934-bd0c-226d6fe8d98c',
'f96a0679-4333-4629-b86c-b8a6f0b85584',
'0d473793-1d1e-489a-a04c-f42c509f1cfe',
'9e75e28c-f8d1-437f-b79d-1adb32a4afb6',
'c2163889-8057-4b1c-b072-48d00c87d81e',
'3c735a55-015e-4442-b780-7fa7b603ebc7'
);

select c_final_tilaka_doc from app_fd_ds_tilaka_api_calls where id in (
'e625cf51-fd66-44dd-9c52-27c6904301bf',
'e26ffb9e-b653-4b00-8928-d83f7cac88c2',
'cfa84fb0-dab9-4934-bd0c-226d6fe8d98c',
'f96a0679-4333-4629-b86c-b8a6f0b85584',
'0d473793-1d1e-489a-a04c-f42c509f1cfe',
'9e75e28c-f8d1-437f-b79d-1adb32a4afb6',
'c2163889-8057-4b1c-b072-48d00c87d81e',
'3c735a55-015e-4442-b780-7fa7b603ebc7'
);


select id,c_doc_id  from where c_doc_id in (
'R-EXT-2504-000014',
'R-EXT-2504-000013',
'R-EXT-2504-000012',
'R-EXT-2504-000011',
'R-EXT-2504-000010',
'R-EXT-2504-000009',
'R-EXT-2504-000008',
'R-EXT-2504-000007',
'R-EXT-2504-000006',
'R-EXT-2504-000005'
);

1cb1278b-9da6-441a-a539-4ea609e5a93a	R-EXT-2504-000005
223069be-4882-4758-a8ee-b4a7e92138db	R-EXT-2504-000006
cc838fce-c612-461e-8693-8e16b16e9185	R-EXT-2504-000007
dd91acde-34b4-471e-9a39-aa8f9bd74bac	R-EXT-2504-000008
3dcd2145-c091-46ff-b052-3acf854f8614	R-EXT-2504-000009
dcc11a87-0321-4391-816b-79da9cf6862c	R-EXT-2504-000010
cbda5da3-82b6-4751-87e0-9b3d4686b335	R-EXT-2504-000011
8d4489a8-21d0-44ed-ad94-55f7787f9221	R-EXT-2504-000012
fa421c0f-d419-4f7f-83d7-81628741a9c8	R-EXT-2504-000013
05f8ae68-b1b6-4e37-98d7-88d35b37df32	R-EXT-2504-000014



