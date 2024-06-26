@@
identifier NUMA;
@@
blk_alloc_queue(
+ drbd_make_request,
 NUMA)

@@
identifier x;
symbol drbd_ops;
@@
struct block_device_operations drbd_ops = {
- .submit_bio = x,
};

@@
type T;
identifier b;
identifier bio = bio;
@@
T
- drbd_submit_bio(
+ drbd_make_request(struct request_queue *q,
 struct bio *b) { ... }
