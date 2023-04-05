#include <iostream>
using namespace std;

const int maxsize = 10;
int Qarray[maxsize];
int front = -1, rear = -1;

int isfull() {
    if((rear + 1)%maxsize == front){
        return 1;
    }
    else{
        return 0;
    }
}

int isempty() {
    if (front == -1) {
        return 1;
    }
    else {
        return 0;
    }
}

void enqueue(int value) {
    if (isfull()) {
        cout << "Queue is full" << endl;
    }
    else {
        if (front == -1) {
            front = 0;
            rear = 0;
        }
        else{
        rear = (rear + 1) % maxsize;
        }
        Qarray[rear] = value;
        
    }
}

int dequeue() {
    int data;
 if(isempty()){
     cout<< "the Queue is Empty"<<endl;
     return -1;
 }
 data = Qarray[front];
 if(front == rear){
     rear = -1;
     front = -1;
 }
 else{
     front = front + 1;
 }
 return 0;
}

void print() {
    int i;
    if (isempty()) {
        cout << "Empty Queue" << endl;
    }
    else {
        cout << "The queue is: " << endl;
        for (i = front; i != rear; i = (i + 1) % maxsize) {
            cout << Qarray[i] << endl;
        }
        cout << Qarray[i] << endl;
    }
}
int main(){
    enqueue(10);
    enqueue(20);
    enqueue(30);
    enqueue(40);
    enqueue(50);
    enqueue(60);
    enqueue(70);
    enqueue(80);
    enqueue(90);
    enqueue(100);
    enqueue(110); // Queue is full
    print();
    dequeue();
    dequeue();
    dequeue();
    dequeue();
    dequeue();
    enqueue(110);
    enqueue(120);
    print(); 
    
}
