import React, { Component } from 'react';
import DataTile from '../components/DataTile'

import {LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, Legend, BarChart, Bar} from 'recharts';


class DailyReportTile extends Component {
  constructor(props) {
    super(props);
    this.state = {

    }
  }


  render() {

    let goals = this.props.goals;
    let inputs = this.props.inputs;

    let mappedInputs = inputs.inputs.map((input) => {
      return input.goal_id
    })

    let mappedGoals = goals.goals.map((goal) => {
      return goal.name
    })

    let mappedData = inputs.inputs.map(input => (
      {name: input.goal_id, accomplished: 1}
    ));



    return(

      <div id="graphs">

        <h2>Daily Report</h2>

        <BarChart width={750} height={250} data={mappedData}>
            <CartesianGrid strokeDasharray="3 3" />
            <XAxis dataKey="name" />
            <YAxis />
            <Tooltip />
            <Legend />

            <Bar dataKey="accomplished" fill="#87AC4E" />
            {
              goals.goals.map((goal) => {
                return (<Bar dataKey={`${goal.id} - ${goal.name}`} fill="#00BFFF" />)
              })
            }

        </BarChart>

      </div>
    )
  }}

  export default DailyReportTile;
