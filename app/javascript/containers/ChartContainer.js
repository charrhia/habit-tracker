import React, { Component } from 'react';
import WeeklyReportTile from '../components/WeeklyReportTile';
import DailyReportTile from '../components/DailyReportTile';
import MonthlyReportTile from '../components/MonthlyReportTile';

class ChartContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      goals: {goals: []},
      dayInputs: {inputs: []},
      weekInputs: {inputs: []},
      monthInputs: {inputs: []}
    }
    this.handleDailyClick = this.handleDailyClick.bind(this)
    this.handleWeeklyClick = this.handleWeeklyClick.bind(this)
    this.handleMonthlyClick = this.handleMonthlyClick.bind(this)
  }

  componentDidMount() {
    fetch(`/api/v1/goals.json`, { credentials: 'same-origin' })
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
    fetch(`/api/v1/inputs/day.json`, { credentials: 'same-origin' })
    .then(response => {
      if (response.ok) {
        return response;
      }
    })
    .then(response => response.json())
    .then(body => {
      this.setState({dayInputs: body})
    })};

    handleWeeklyClick() {
      fetch(`/api/v1/inputs/week.json`, { credentials: 'same-origin' })
      .then(response => {
        if (response.ok) {
          return response;
        }
      })
      .then(response => response.json())
      .then(body => {
        this.setState({weekInputs: body})
      })};

      handleMonthlyClick() {
        fetch(`/api/v1/inputs/month.json`, { credentials: 'same-origin' })
        .then(response => {
          if (response.ok) {
            return response;
          }
        })
        .then(response => response.json())
        .then(body => {
          this.setState({monthInputs: body})
        })};

        render() {

          return(
            <div id="charting">
              <h1>Analytics</h1>
              <div id="chart-msg">
                <p>Select a report to pull current progress to date</p>
              </div>

              <div id="action-list">
                <button onClick={this.handleDailyClick}>Daily Report</button>
                <button onClick={this.handleWeeklyClick}>Weekly Report</button>
                <button onClick={this.handleMonthlyClick}>Monthly Report</button>
              </div>

              <DailyReportTile
                inputs={this.state.dayInputs}
                goals={this.state.goals}
              />

              <WeeklyReportTile
                inputs={this.state.weekInputs}
                goals={this.state.goals}
              />

              <MonthlyReportTile
                inputs={this.state.monthInputs}
                goals={this.state.goals}
              />
            </div>
          )
        }}

        export default ChartContainer;
