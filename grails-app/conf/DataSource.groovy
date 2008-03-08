dataSource {
	pooled = false
	driverClassName = "com.mysql.jdbc.Driver"
	dialect = org.hibernate.dialect.MySQLInnoDBDialect
	username = "root"
	password = ""
}
hibernate {
    cache.use_second_level_cache=true
    cache.use_query_cache=true
    cache.provider_class='org.hibernate.cache.EhCacheProvider'
	//show_sql = true
	format_sql = true
}
// environment specific settings
environments {
	development {
		dataSource {
			dbCreate = "update" // one of 'create', 'create-drop','update'
			url = "jdbc:mysql://localhost:3306/geedbackDev"
			username = "root"
			password = ""
		}
	}
	test {
		dataSource {
			dbCreate = "update"
			url = "jdbc:hsqldb:mem:testDb"
		}
	}
	production {
		dataSource {
			dbCreate = "update"
			url = "jdbc:mysql://localhost:3306/geedback"
			username = "usrgeedback"
			password = "elusrpwd"
		}
	}
}