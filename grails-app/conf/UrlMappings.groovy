class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/app/$action?/$id?"(controller: "start")

		"/"(view:"/index")
		"500"(view:'/error')
	}
}
