/*Practical No.1)
Consider a student database of SEIT class (at least 15 records). Database contains different fields of 
every student like Roll No, Name and SGPA.(array of structure)
e) Search a particular student according to name using binary search without recursion. 
*/

#include <iostream>
#include <string.h>

int const size=5;
using namespace std;
struct student
{
 	int rollno;
 	char name[20];
 	float SGPA;
};
void accept(struct student list[size]); 
void binarysearch(struct student list[size]); 

int main() 
{
 	struct student data[20];
 	accept(data);
 
 	cout<<"\n Binary Search";
 	binarysearch(data);
}

void accept(struct student list[size]) 
{
 	int i;
 	for (i=0;i<size;i++)
 	{
 		cout<<"Enter roll no.,name and SGPA:";
 		cin>>list[i].rollno>>list[i].name>>list[i].SGPA;
 	}
}

void binarysearch(struct student list[size])
{
 	int i, k,lower,upper,mid;
 	char search[80];
 	cout<<"\n Enter name of student you want to search:";
 	cin>>search;
 
 	lower=0;
 	upper=size-1;
 	mid=(lower+upper)/2;
 
 	while(lower<=upper)
 	{
 		if(strcmp(list[mid].name,search)<0)
 		{
 			lower=mid+i;
 		}	
 
 		else if(strcmp(list[mid].name,search)==0)
 		{
 			cout<<"\n"<<list[mid].rollno<<"\t"<<list[mid].name<<"\t"<<list[mid].SGPA;
 			break;
 		}
 		else
 		{
 			upper=mid-1;
 			mid=(lower+upper)/2;
 		}
 	}
 	if(lower>upper)
 	{
 		cout<<search<<" found in the list";
 	}
}

