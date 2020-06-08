# Keycloak Themes

Themes can be deployed to Keycloak by copying the theme directory to themes or it can be deployed as an archive. During development you can copy the theme to the themes directory, but in production you may want to consider using an archive. An archive makes it simpler to have a versioned copy of the theme, especially when you have multiple instances of Keycloak for example with clustering.

## How to Install

Simply drop the jar in `$KEYCLOAK_HOME\standalone\deployments`, it will be automatically deployed by keycloak.

## How to Use

- Go to admin console, in Clients menu.
- Select the Client resource you want to change the theme.
- On the Settings Tab, Login Theme dropdown, you should see the list of themes available.
- Select the theme you want to apply for your Client app.