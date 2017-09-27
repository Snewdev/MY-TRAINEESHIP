<p class="lead"><img class="slide-image" src="${images}/tt.jpg"
									alt=""></p>




<div class="list-group">


	<c:forEach items="${categories}" var="category">
		<a href="${contextRoot}/show/category/${category.id}/products" class="list-group-item" id="a_${category.name}">${category.name}</a>
	</c:forEach>

	 
</div>