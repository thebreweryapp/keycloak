# Keycloak Themes

### Usage

Copy the folder of the custom theme.

Note: In Development stage, In order to see changes without restarting the Keycloak server you need to edit the standalone.xml file on your Keycloak server to disable caching.

located here: 

```javascript
./standalone/configuration/standalone.xml
```


Make the following changes to standalone.

```javscript
<theme>
    <staticMaxAge>-1</staticMaxAge>
    <cacheThemes>false</cacheThemes>
    <cacheTemplates>false</cacheTemplates>
    ...
</theme>
```

Remember to re-enable caching in production as it will significantly impact performance.


Then, copy selected theme folder, paste it on the Keycloak's theme directory located here: 


```javascript
    keycloak-10.0.1/themes
```
there, you should be able to see the default themes, paste the 'brewery' folder on that directory. after you copied the new custom theme to the directory, you can now select that theme on the keycloak admin console.