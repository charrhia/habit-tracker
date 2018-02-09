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

    console.log(this.props.inputs)

    const data = [
      {name: "Goal", 'Goal': 3},
    ];



    // goal label

    let mappedInputs = inputs.inputs.map((input) => {
      return input.goal_id
    })

    let mappedGoals = goals.goals.map((goal) => {
      return goal.name
    })

    //
    // let mappedData = inputs.inputs.map((input) => {
    //   return (<p key={`${input.id}_${input.goal_id}`}>
    //
    //   </p>
    // )
    // })


    return(

      <div id="graphs">

        <h2>Daily Report</h2>

        <BarChart width={700} height={250} data={data}>
            <CartesianGrid strokeDasharray="3 3" />
            <XAxis dataKey="name" />
            <YAxis dataKey="timestamp" />
            <Tooltip />
            <Legend />
            {/* {
              line.map((id) => {
                return (<Bar key={`line_${id}`} dataKey={`${id}_value`} />)
              })
            } */}

            {
              goals.goals.map((goal) => {
                return (<Bar key={`${goal.name}`} dataKey={`${goal.name}`} />)
              })
            }


            {/* {
              inputs.inputs.map((input) => {
                return (<Bar key={`Goal ID: ${input.goal_id}`} dataKey={`Goal ID: ${input.goal_id}`} />)
              })
            } */}


          {/* <Bar dataKey='Goal 1' fill="#87AC4E" /> */}
        </BarChart>

      </div>
    )
  }}

  export default DailyReportTile;
