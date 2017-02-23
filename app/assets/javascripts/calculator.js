$(document).ready(function() {
  (function () {
  	function calculateCourseYardage(length, iron) {
  		length = parseFloat(length);
  		iron = parseFloat(iron);
  		return (length * 14 + iron * 18);
  	}

  	var courseYardage = document.getElementById("courseYardage");
  	if (courseYardage) {
  		courseYardage.onsubmit = function () {
  			this.distance.value = calculateCourseYardage(this.length.value, this.iron.value);
  			return false;
  		};
  	}
  }());
});
