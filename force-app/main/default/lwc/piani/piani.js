import { LightningElement, wire } from 'lwc';
import queryAccounts from '@salesforce/apex/piani.queryStaticResource';
export default class Piani extends LightningElement {
    floor = 0;
    parentesisList = [];
    obj =document.getElementById("parentesis").value;
    handleChange(event) {
        this.numberOfFloors = event.detail.value;
    }
    calculate(){
        //prendere contenuto dell'input e fare calcolo parentesi
        if((!this.obj.value==null)||(!this.obj.value==='')||(!this.obj.value===undefined))
            {
                readeable = (obj =='(') ?
                floor++ :
                floor--
            }
            
        }
    reset() {
        this.numberOfFloors = null;
    }    
}