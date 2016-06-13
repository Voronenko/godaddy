# godaddy
Set of shell scripts to manage dns entries for godaddy domains


1. Copy env.example to .env & configure your settings.

2.  to add a completely new record

<pre>

add_a_record.sh  hostname 205.33.44.66 A
add_a_record.sh  pointingto hostname CNAME

</pre>

3.  to update existing record

<pre>

update_a_record.sh  hostname 205.33.44.66 A
update_a_record.sh  pointingto hostname CNAME

</pre>

4.  to remove

Not implemented in API :(
