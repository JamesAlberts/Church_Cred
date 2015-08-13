<%@ page import="churchcred.Member" %>



<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="member.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" maxlength="15" required="" value="${memberInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="member.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" maxlength="20" required="" value="${memberInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'middleName', 'error')} required">
	<label for="middleName">
		<g:message code="member.middleName.label" default="Middle Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="middleName" maxlength="15" required="" value="${memberInstance?.middleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="member.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" maxlength="15" required="" value="${memberInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'memberPassword', 'error')} required">
	<label for="memberPassword">
		<g:message code="member.memberPassword.label" default="Member Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="memberPassword" maxlength="15" required="" value="${memberInstance?.memberPassword}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'memberEmail', 'error')} required">
	<label for="memberEmail">
		<g:message code="member.memberEmail.label" default="Member Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="memberEmail" required="" value="${memberInstance?.memberEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'cellPhoneNumber', 'error')} ">
	<label for="cellPhoneNumber">
		<g:message code="member.cellPhoneNumber.label" default="Cell Phone Number" />
		
	</label>
	<g:textField name="cellPhoneNumber" maxlength="12" value="${memberInstance?.cellPhoneNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'otherPhoneNumber', 'error')} ">
	<label for="otherPhoneNumber">
		<g:message code="member.otherPhoneNumber.label" default="Other Phone Number" />
		
	</label>
	<g:textField name="otherPhoneNumber" maxlength="12" value="${memberInstance?.otherPhoneNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'backgroundCheckPerfomed', 'error')} ">
	<label for="backgroundCheckPerfomed">
		<g:message code="member.backgroundCheckPerfomed.label" default="Background Check Perfomed" />
		
	</label>
	<g:checkBox name="backgroundCheckPerfomed" value="${memberInstance?.backgroundCheckPerfomed}" />

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'sexualHarrasmentCompleted', 'error')} ">
	<label for="sexualHarrasmentCompleted">
		<g:message code="member.sexualHarrasmentCompleted.label" default="Sexual Harrasment Completed" />
		
	</label>
	<g:datePicker name="sexualHarrasmentCompleted" precision="day"  value="${memberInstance?.sexualHarrasmentCompleted}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="member.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="title" from="${memberInstance.constraints.title.inList}" required="" value="${memberInstance?.title}" valueMessagePrefix="member.title"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'suffix', 'error')} required">
	<label for="suffix">
		<g:message code="member.suffix.label" default="Suffix" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="suffix" from="${memberInstance.constraints.suffix.inList}" required="" value="${memberInstance?.suffix}" valueMessagePrefix="member.suffix"/>

</div>

