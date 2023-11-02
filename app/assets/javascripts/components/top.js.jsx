import axios from 'axios';



function Top() {
  
  const name = '太郎';
  const age = '123';
  const password　= '123456789'
  
 return (
    <div>
      明日の天気は雨
      明日の天気は雨
      <p>大枠で囲った中に記述</p>
      <div>
      　これはテストです
      　<p>私の年齢は{age}で好きな数字は{age}</p>
      </div>
    <h1>{name}</h1>
    </div>
   );
  }

  


ReactDOM.render(
  <div>
    <Weather/>
    <Weather/>
  </div>,
  
  );
export default Top;




