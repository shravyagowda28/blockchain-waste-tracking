// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract WasteTracking {

    struct Waste {
        uint id;
        string wasteType;
        string source;
        string collector;
        string destination;
        uint timestamp;
    }

    Waste[] public wastes;

    function addWaste(
        string memory _type,
        string memory _source,
        string memory _collector,
        string memory _destination
    ) public {

        wastes.push(Waste(
            wastes.length,
            _type,
            _source,
            _collector,
            _destination,
            block.timestamp
        ));
    }
}