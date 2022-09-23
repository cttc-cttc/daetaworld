const $main=document.querySelector("#main");
const $qna=document.querySelector("#qna");
const $btn=document.querySelector("button");
const $bar=document.querySelector(".statusBar");
const $result=document.querySelector("#result");
const endPoint=5;
const select=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];


function calResult(){  /* 결과계산 함수 */
    /* 가장 많이 선택한 type을 결과로서 나올 수 있도록 */
    const result = select.indexOf(Math.max(...select));
    /* ...select: 전개구문 => 선택한 배열을 펼치게 해줌*/
    return result;

}

function setResult(){
    let point=calResult();
    const resultName = document.querySelector('.resultName');
    resultName.innerHTML=infoList[point].name;

//    const resultImg=document.createElement('img');
//    const imgDiv=document.querySelector('#resultImg');
//    const imgURL='img/image-' + point + '.jpg';
//    resultImg.src=imgURL;
//    resultImg.alt=point;
//    resultImg.classList.add('img-fluid');
//    imgDiv.appendChild(resultImg);

    const resultDesc=document.querySelector('.resultDesc');
    resultDesc.innerHTML=infoList[point].desc;
}

function goResult(){  /*결과 창으로 넘어가는 함수 */
    $qna.style.WebkitAnimation="fadeOut 1s";
    $qna.style.animation="fadeOut 1s";
    setTimeout(()=>{
        $result.style.WebkitAnimation="fadeIn 1s";
        $result.style.animation="fadeIn 1s";
        setTimeout(()=> {
            $qna.style.display="none";
            $result.style.display="block";
        },450);
    },450);
    setResult();
}



function addAnswer(answerText,qidx,idx){  /* 응답버튼 추가 함수 */
    const ab=document.querySelector(".answerBox");
    const answer=document.createElement('Button');
    /*createElement: 지정한 태그를 html의 요소로 만들어줌 */
    answer.classList.add('answerList');
    /* button 태그에 answerList라는 클래스를 더해주는것 */
    answer.classList.add('my-3');
    answer.classList.add('py-3');
    answer.classList.add('mx-auto');
    answer.classList.add('fadeIn');  /*버튼이 나타날때 애니메이션 */

    ab.appendChild(answer);
    /*answer요소가 ab의 chile요소가 될 수 있도록 해줌 */
    answer.innerHTML=answerText;
    answer.addEventListener("click",function(){   /*어떠한 답변 버튼이 선택되었을때 */
        const child = document.querySelectorAll(".answerList"); 
        /*버튼 3개를 모두 선택 */
        for(let i=0;i<child.length;i++){
            child[i].disabled=true;  /*모든 버튼이 비활성화 되도록 해줌 */
            child[i].style.WebkitAnimation="fadeOut 0.5s";
            child[i].style.animation="fadeOut 0.5s";
        }
        setTimeout(()=>{   /*delay를 주면서 버튼이 사라지게 */
            const target=qnaList[qidx].a[idx].type;  /* 앞서 저장한 i번째 응답이 target에 저장됨 */
            for(let j=0;j<target.length;j++){  /*target의 type 내용을 훝어봄 */
                     select[target[j]]+=1;
              }  /*몇번째 질문에서 몇번째 응답을 선택했는지 저장*/
            for(let i=0;i<child.length;i++){
                child[i].style.display="none";
            }
            goNext(++qidx);
        },450)
    },false);
}



function goNext(qidx){   /* 다음 질문으로 넘어가는 함수 */
    if(qidx===endPoint){
        goResult();
        return;
    }
    const qb=document.querySelector(".qBox");
    qb.innerHTML=qnaList[qidx].q;
    for(let j=0;j<(qnaList[qidx].a).length;j++){
        addAnswer(qnaList[qidx].a[j].answer,qidx,j);
    }
    $bar.style.width=(100/endPoint)*(qidx+1)+'%';
}


function openQna(){  /* start 버튼 누르면 qna 창이 열리는 함수 */
    $main.style.WebkitAnimation="fadeOut 1s";
    $main.style.animation="fadeOut 1s";
    setTimeout(()=>{
        $qna.style.WebkitAnimation="fadeIn 1s";
        $qna.style.animation="fadeIn 1s";
        setTimeout(()=> {
            $main.style.display="none";
            $qna.style.display="block";
        },450);
    },450);
    let i=0;
    goNext(i);
}

$btn.addEventListener("click",openQna);