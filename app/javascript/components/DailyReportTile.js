import React from 'react'
import {LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, Legend, BarChart, Bar} from 'recharts';

const DailyReportTile = (props) => {

    let mappedDayData = props.inputs.inputs.map(input => (
      {goal: input.goal_id, accomplished: input.goal_id}
    ));

    return(

      <div id="graphs">

        <h2>Daily Report</h2>

        <BarChart width={750} height={250} data={mappedDayData}>
            <CartesianGrid strokeDasharray="3 3" />
            <XAxis dataKey="goal" />
            <YAxis />
            <Tooltip />
            <Legend />
            <Bar dataKey="accomplished" fill="#87AC4E" barSize={50} />
            {
              props.goals.goals.map((goal) => {
                return (<Bar dataKey={`${goal.id} - ${goal.name}`} fill="#87AC4E" />)
              })
            }
        </BarChart>
      </div>
    )};

  export default DailyReportTile;
