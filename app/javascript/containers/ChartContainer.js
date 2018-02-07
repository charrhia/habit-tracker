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
  }


// goals and inputs fetch
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

    fetch(`/api/v1/inputs/day.json`)
    .then(response => {
      return response.json()
    })
    .then(body => {
      this.setState({ dayInputs: body })
    })
    fetch(`/api/v1/inputs/week.json`)
    .then(response => {
      return response.json()
    })
    .then(body => {
      this.setState({ weekInputs: body })
    })
    fetch(`/api/v1/inputs/month.json`)
    .then(response => {
      return response.json()
    })
    .then(body => {
      this.setState({ monthInputs: body })
    })

    .catch(error => console.error(`Error in fetch: ${error.message}`));
}



  render() {

let goals = this.state.goals;
let dayInputs = this.state.dayInputs;
let weekInputs = this.state.weekInputs;


    return(

      <div id="charting">
        <h1>Analytics</h1>

        <div id="action-list">

          <button>Daily Report</button>
          <button>Weekly Report</button>
          <button>Monthly Report</button>

        </div>

        <WeeklyReportTile
          goals={goals}
          inputs={dayInputs}
         />


        <MonthlyReportTile

        />

        <DailyReportTile

        />


      </div>
    )
  }}

  export default ChartContainer;
