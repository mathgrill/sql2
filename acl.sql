BEGIN
    DBMS_NETWORK_ACL_ADMIN.assign_acl (
        acl          => '/sys/acls/acl_test_for_scott.xml',
        HOST         => 'smtp.server.com',
        lower_port   => 25,
        upper_port   => 25);
    COMMIT;
END;
/    

SELECT HOST, lower_port, upper_port, acl FROM dba_network_acls;
