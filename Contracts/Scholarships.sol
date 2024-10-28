// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

contract Scholarship {
    struct Student {
        string name;
        string documentHash;
        uint256 scholarshipAmount;
    }

    mapping(uint256 => Student) public students;
    uint256 public studentCount;

    function addStudent(string memory _name, string memory _documentHash) public returns (uint256) {
        studentCount++;
        students[studentCount] = Student(_name, _documentHash, 0);
        return studentCount;
    }

    function assignFunds(uint256 _studentId, uint256 _amount) public {
        students[_studentId].scholarshipAmount = _amount;
    }

    function getStudent(uint256 _studentId) public view returns (Student memory) {
        return students[_studentId];
    }
}
