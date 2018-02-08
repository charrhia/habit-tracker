import React, { Component } from 'react';
import WeeklyReportTile from '../components/WeeklyReportTile';
import DailyReportTile from '../components/DailyReportTile';
import MonthlyReportTile from '../components/MonthlyReportTile';

class ChartContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      goals: {},
      dayInputs: {},
      weekInputs: {},
      monthInputs: {}
    }
    this.handleDailyClick = this.handleDailyClick.bind(this)
    this.handleWeeklyClick = this.handleWeeklyClick.bind(this)
    this.handleMonthlyClick = this.handleMonthlyClick.bind(this)
  }

  componentDidMount() {
    fetch(`/api/v1/goals.json`)
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
        error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => {
      return response.json()
    })
    .then(body => {
      this.setState({ goals: body })
    })

    .catch(error => console.error(`Error in fetch: ${error.message}`));
}


handleDailyClick() {
  fetch(`/api/v1/inputs/day.json`)
  .then(response => {
    if (response.ok) {
      return response;
    }
  })
  .then(response => response.json())
  .then(body => {
    this.setState({dayInputs: body})
  })
}

handleWeeklyClick() {
  fetch(`/api/v1/inputs/week.json`)
  .then(response => {
    if (response.ok) {
      return response;
    }
  })
  .then(response => response.json())
  .then(body => {
    this.setState({weekInputs: body})
  })
}

handleMonthlyClick() {
  fetch(`/api/v1/inputs/month.json`)
  .then(response => {
    if (response.ok) {
      return response;
    }
  })
  .then(response => response.json())
  .then(body => {
    this.setState({monthInputs: body})
  })
}






  render() {

let goals = this.state.goals;

    return(

      <div id="charting">
        <h1>Analytics</h1>
        <div id="chart-msg"><p>Click each button to pull current report</p></div>

        <div id="action-list">

          <button onClick={this.handleDailyClick}>Daily Report</button>

          <button onClick={this.handleWeeklyClick}>Weekly Report</button>

          <button onClick={this.handleMonthlyClick}>Monthly Report</button>

        </div>

        <WeeklyReportTile
          inputs={this.state.weekInputs}
         />

         <MonthlyReportTile
           inputs={this.state.monthInputs}
        />

        <DailyReportTile
          inputs={this.state.dayInputs}
        />


      </div>
    )
  }}

  export default ChartContainer;
