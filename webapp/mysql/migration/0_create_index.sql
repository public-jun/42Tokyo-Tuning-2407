-- このファイルに記述されたSQLコマンドが、マイグレーション時に実行されます。
CREATE UNIQUE INDEX idx_areas_name ON areas (name);

CREATE UNIQUE INDEX idx_users_username ON users (username);

CREATE INDEX idx_sessions_user_id ON sessions (user_id);
CREATE INDEX idx_sessions_session_token ON sessions (session_token);

CREATE INDEX idx_dispatchers_user_area ON dispatchers (user_id, area_id);

CREATE INDEX idx_tow_trucks_driver_id ON tow_trucks (driver_id);
CREATE INDEX idx_tow_trucks_area_id ON tow_trucks (area_id);
CREATE INDEX idx_tow_trucks_status ON tow_trucks (status);

CREATE INDEX idx_nodes_area_id ON nodes (area_id);
CREATE INDEX idx_nodes_coordinates ON nodes (x, y);

CREATE INDEX idx_edges_nodes ON edges (node_a_id, node_b_id);

CREATE INDEX idx_locations_tow_truck_id ON locations (tow_truck_id);
CREATE INDEX idx_locations_node_id ON locations (node_id);

CREATE INDEX idx_orders_client_id ON orders (client_id);
CREATE INDEX idx_orders_dispatcher_id ON orders (dispatcher_id);
CREATE INDEX idx_orders_tow_truck_id ON orders (tow_truck_id);
CREATE INDEX idx_orders_node_id ON orders (node_id);
CREATE INDEX idx_orders_status ON orders (status);
CREATE INDEX idx_orders_order_time ON orders (order_time);

CREATE INDEX idx_completed_orders_order_id ON completed_orders (order_id);
CREATE INDEX idx_completed_orders_tow_truck_id ON completed_orders (tow_truck_id);
CREATE INDEX idx_completed_orders_completed_time ON completed_orders (completed_time);
