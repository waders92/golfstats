<div>
  <div class="col-lg-6">
    <%= bar_chart current_user.rounds.group(:course).average(:score), colors: ["#9C0808"] %>
  </div>
  <div class="col-lg-6">
    <%= bar_chart current_user.rounds.group(:course).average(:greens), colors: ["#0990BD"] %>
  </div>

  <br class="clr" />

  <div class="col-lg-6">
    <%= bar_chart current_user.rounds.group(:course).average(:fwys), colors: ["#3657B3"] %>
  </div>
  <div class="col-lg-6">
    <%= bar_chart current_user.rounds.group(:course).average(:putts), colors: ["green"] %>
  </div>
</div>
