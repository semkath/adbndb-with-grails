<%@ page import="de.uni_koeln.hki.thaller.Person" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            
            <g:hasErrors bean="${personInstance}">
            <div class="errors">
                <g:renderErrors bean="${personInstance}" as="list" />
            </div>
            </g:hasErrors>
           	<g:hasErrors bean="${personName}">
            <div class="errors">
                <g:renderErrors bean="${personName}" as="list" />
            </div>
            </g:hasErrors>
            <g:hasErrors bean="${personConfession}">
            <div class="errors">
                <g:renderErrors bean="${personConfession}" as="list" />
            </div>
            </g:hasErrors>
            
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>      
                                 
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="lastName"><g:message code="name.lastName.label" default="Last Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: nameInstance, field: 'lastName', 'errors')}">
                                    <g:textField name="lastName" value="${nameInstance?.lastName}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="birthName"><g:message code="name.birthName.label" default="Birth Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: nameInstance, field: 'birthName', 'errors')}">
                                    <g:textField name="birthName" value="${nameInstance?.birthName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="firstNames"><g:message code="name.firstNames.label" default="First Names" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: nameInstance, field: 'firstNames', 'errors')}">
                                    <g:textField name="firstNames" value="${nameInstance?.firstNames}" />
                                </td>
                            </tr> 
                                  
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dateOfBirth"><g:message code="person.dateOfBirth.label" default="Date Of Birth" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'dateOfBirth', 'errors')}">
                                    <g:datePicker name="dateOfBirth" precision="day" value="${personInstance?.dateOfBirth}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dateOfDeath"><g:message code="person.dateOfDeath.label" default="Date Of Death" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'dateOfDeath', 'errors')}">
                                    <g:datePicker name="dateOfDeath" precision="day" value="${personInstance?.dateOfDeath}" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="bio"><g:message code="person.bio.label" default="Bio" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'bio', 'errors')}">
                                    <g:textArea name="bio" cols="40" rows="5" value="${personInstance?.bio}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="gender"><g:message code="person.gender.label" default="Gender" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'gender', 'errors')}">
                                    <g:checkBox name="gender" value="${personInstance?.gender}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="start"><g:message code="confession.start.label" default="Start" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: confessionInstance, field: 'start', 'errors')}">
                                    <g:datePicker name="start" precision="day" value="${confessionInstance?.start}"  />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="title"><g:message code="confession.title.label" default="Title" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: confessionInstance, field: 'title', 'errors')}">
                                    <g:textField name="title" value="${confessionInstance?.title}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="end"><g:message code="confession.end.label" default="End" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: confessionInstance, field: 'end', 'errors')}">
                                    <g:datePicker name="end" precision="day" value="${confessionInstance?.end}"  />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="start"><g:message code="location.start.label" default="Start" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: locationInstance, field: 'start', 'errors')}">
                                    <g:datePicker name="start" precision="day" value="${locationInstance?.start}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="description"><g:message code="location.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: locationInstance, field: 'description', 'errors')}">
                                    <g:textField name="description" value="${locationInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="location.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: locationInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${locationInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="longitude"><g:message code="location.longitude.label" default="Longitude" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: locationInstance, field: 'longitude', 'errors')}">
                                    <g:textField name="longitude" value="${fieldValue(bean: locationInstance, field: 'longitude')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="latitude"><g:message code="location.latitude.label" default="Latitude" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: locationInstance, field: 'latitude', 'errors')}">
                                    <g:textField name="latitude" value="${fieldValue(bean: locationInstance, field: 'latitude')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="end"><g:message code="location.end.label" default="End" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: locationInstance, field: 'end', 'errors')}">
                                    <g:datePicker name="end" precision="day" value="${locationInstance?.end}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="relatedPerson"><g:message code="relation.relatedPerson.label" default="Related Person" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: relationInstance, field: 'relatedPerson', 'errors')}">
                                    <g:select name="relatedPerson.id" from="${de.uni_koeln.hki.thaller.Person.list()}" optionKey="id" value="${relationInstance?.relatedPerson?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="directRelation"><g:message code="relation.directRelation.label" default="Direct Relation" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: relationInstance, field: 'directRelation', 'errors')}">
                                    <g:checkBox name="directRelation" value="${relationInstance?.directRelation}" />
                                </td>
                            </tr>
                        	<%--
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="person"><g:message code="relation.person.label" default="Person" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: relationInstance, field: 'person', 'errors')}">
                                    <g:select name="person.id" from="${de.uni_koeln.hki.thaller.Person.list()}" optionKey="id" value="${relationInstance?.person?.id}"  />
                                </td>
                            </tr>
                       		--%>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="start"><g:message code="relation.start.label" default="Start" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: relationInstance, field: 'start', 'errors')}">
                                    <g:datePicker name="start" precision="day" value="${relationInstance?.start}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="end"><g:message code="relation.end.label" default="End" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: relationInstance, field: 'end', 'errors')}">
                                    <g:datePicker name="end" precision="day" value="${relationInstance?.end}"  />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="title"><g:message code="work.title.label" default="Title" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: workInstance, field: 'title', 'errors')}">
                                    <g:textField name="title" value="${workInstance?.title}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="releaseDate"><g:message code="work.releaseDate.label" default="Release Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: workInstance, field: 'releaseDate', 'errors')}">
                                    <g:datePicker name="releaseDate" precision="day" value="${workInstance?.releaseDate}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="subtitle"><g:message code="work.subtitle.label" default="Subtitle" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: workInstance, field: 'subtitle', 'errors')}">
                                    <g:textField name="subtitle" value="${workInstance?.subtitle}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>