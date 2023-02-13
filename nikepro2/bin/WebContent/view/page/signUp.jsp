<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>

<head>
	<title>Sign Up</title>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>

<tag:main>

	<main class="memberWrap">

		<div class="container">
			<h1>회원가입을 위해 입력하세요.</h1>
			<form
				action="${pageContext.request.contextPath}/signUp.do"
				method="post"
				id="memberForm"
				class="memberForm"
			>
				<div class="form-group">
					<label for="memId">아이디 :</label>
					<input
						type="text"
						placeholder="Enter id"
						pattern="^[a-z]{5,8}[a-z0-9]{0,8}$"
						name="memId"
						id="memId"
						class="form-control"
						required
					>
				</div>
				<div class="form-group">
					<label for="memPass">비밀번호 :</label>
					<input
						type="password"
						placeholder="Enter password"
						pattern="^[^A-Z@]{3,}$"
						name="memPass"
						id="memPass"
						class="form-control"
						required
					>
				</div>
				<div class="form-group">
					<label for="confirmPass">비밀번호 확인 :</label> <input type="password"
						placeholder="Confirm password" 
						name="confirmPass" id="confirmPass" class="form-control" required>
				</div>
				<div class="form-group">
					<label for="memName">이름 :</label> <input type="text"
						placeholder="Enter name" pattern="^[가-힣]{3,4}$" name="memName"
						id="memName" class="form-control">
				</div>
				<div class="form-group">
					<label for="memZip">우편번호 :</label>
					<input
						type="text"
						placeholder="Enter zipcode"
						name="memZip"
						id="memZip"
						class="form-control"
					>
				</div>
				<button
					type="button"
					class="btn btn-default"
					onclick="execDaumPostcode()"
				>
					우편번호 찾기
				</button>
				<div class="form-group">
					<label for="memAdd1">주소 :</label> <input type="text"
						placeholder="Enter address"
						name="memAdd1" id="memAdd1"
						class="form-control">
				</div>
				<div class="form-group">
					<label for="memAdd2">상세 주소 :</label> <input type="text"
						placeholder="Enter detail address"
						name="memAdd2" id="memAdd2"
						class="form-control">
				</div>
				<div class="form-group">
					<label for="memTel">전화번호 :</label>
					<input
						type="tel"
						placeholder="Enter phone"
						name="memTel"
						id="memTel"
						class="form-control">
				</div>
				<div class="form-group">
					<label for="memMail">이메일 :</label>
					<input
						type="email"
						placeholder="Enter email"
						name="memMail"
						id="memMail"
						class="form-control">
				</div>
				<div class="form-group">
					<label for="memBirth">생년월일 :</label>
					<input
						type="tel"
						placeholder="Enter birth"
						pattern="\d{6}"
						name="memBirth"
						id="memBirth"
						class="form-control">
				</div>
				<%--
				<div class="checkbox">
					<label><input type="checkbox" name="remember">
						Remember me</label>
				</div>
				--%>
				<button type="submit" id="joinBtn" class="btn btn-default">회원가입</button>
			</form>
		</div>
	</main>

	<a href="${pageContext.request.contextPath}/home.do">홈으로</a>

</tag:main>

<script src="${pageContext.request.contextPath}/js/checkInput.js"></script>
<script src="${pageContext.request.contextPath}/js/checkPass.js"></script>
<script src="${pageContext.request.contextPath}/js/getAddressAPI.js"></script>
