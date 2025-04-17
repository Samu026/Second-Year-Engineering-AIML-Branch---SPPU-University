CREATE DEFINER=`root`@`localhost` PROCEDURE `mycur`(INOUT name_list VARCHAR(100))
BEGIN
    DECLARE is_done INT DEFAULT 0;
    DECLARE s_name VARCHAR(20) DEFAULT "";
    DECLARE std_cur CURSOR FOR SELECT name FROM mytable;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET is_done = 1;
    OPEN std_cur;
    
    getdata: LOOP
        FETCH std_cur INTO s_name;
        IF is_done = 1 THEN
            LEAVE getdata;
        END IF;
        SET name_list = CONCAT(s_name, " ", name_list);
    END LOOP;
    
    CLOSE std_cur;
END

