# godaddy
Set of shell scripts to manage dns entries for godaddy domains


1. Copy env.example to .env & configure your settings.

2.  to add a completely new record

add_a_record.sh  hostname 205.33.44.66 A
add_a_record.sh  pointingto hostname CNAME


2.  to update existing record

update_a_record.sh  hostname 205.33.44.66 A
update_a_record.sh  pointingto hostname CNAME


3.  to remove

Not implemented in API :(
