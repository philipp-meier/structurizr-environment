workspace "Structurizr DSL example" {
    model {
        group "Company" {
            user = person "User"

            product = softwareSystem "Example Software System" "Example description." {
                webapp = container "Web Application" {
                    technology "ASP.NET Core"
                    user -> this "uses"
                }
                database = container "Database" {
                    webapp -> this "reads from and writes to"
                }
            }
        }
    }

    views {
        systemLandscape Company {
            include *
            autoLayout lr
        }
        container product {
            include *
            autoLayout lr
        }

        theme default
    }
}