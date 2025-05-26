\COPY deliveries FROM './data/deliveries.csv' DELIMITER ',' CSV HEADER;


\copy matches FROM './data/matches.csv' DELIMITER ',' CSV HEADER;


\copy umpires FROM './data/umpires.csv' DELIMITER ',' CSV HEADER;
