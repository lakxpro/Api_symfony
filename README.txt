Available recipes.

    * doctrine/annotations
    * doctrine/doctrine-bundle
    * doctrine/doctrine-migrations-bundle
    * jms/serializer-bundle
    * knplabs/knp-paginator-bundle
    * lexik/jwt-authentication-bundle
    * sensio/framework-extra-bundle
    * symfony/console
    * symfony/flex
    * symfony/framework-bundle
    * symfony/routing
    * symfony/security-bundle
    * symfony/translation
    * symfony/twig-bundle
    * twig/extra-bundle

N-points

    https://localhost:8000/register 
    
    //Routa na registraci uživatele požaduje username, password a email na registraci
        {
            "username":"username",
            "password":"password",
            "email":"email@email.com"
        }
    //Vrací status kód 

        {
            "status": 200,
            "success": "User [username] successfully created"
        }

    https://localhost:8000/api/login_check

    //Routa na přihlášení uživatele požaduje přihlašovací udaje username a password
        {
            "username":"user15",
            "password":"password15"
        }
    /Vrací jwt token
        {
            "token": "JWT token"
        }

    https://localhost:8000/api/users?page=2&limit=3

    //Tato routa je pod autentifikací pomocí jwt tokenu který se musí zadat do autorizace Bearer token 
    //Vrací list uživatelů na stránku stránka i limit lze nastavit ?page=1&limit=3 
        {
            "users": [
                {
                    "id": 4,
                    "username": "user3",
                    "password": "$2y$13$ikEuiXVOMuTnlmFptteUTe4LemhhEYbFYmvme6lDI5MZsiuaV94kq",
                    "email": "brambor2@brambor.com"
                },
                {
                    "id": 5,
                    "username": "user4",
                    "password": "$2y$13$IvyVgFEjWuHWhl7BI.fC3OwBpeAbfzC5PxJulwvxdmzMzzmN1hUrq",
                    "email": "brambor4@brambor.com"
                },
                {
                    "id": 6,
                    "username": "user5",
                    "password": "$2y$13$p0VE9nMrTcu9K2AWe9wD/.kFC/wia1rROMvEtWrz8ai.XViZZRgG6",
                    "email": "brambor5@brambor.com"
                }
            ],
            "paging": {
                "totalCount": 14,
                "currentPage": 2,
                "itemsLimit": 3
            }
        }
    


