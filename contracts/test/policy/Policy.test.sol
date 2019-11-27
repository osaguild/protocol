pragma solidity ^0.5.0;

import "./../../src/policy/IPolicy.sol";

contract PolicyTest is IPolicy {
	function rewards(uint256 _lockups, uint256 _assets)
		public
		view
		returns (uint256)
	{
		return _lockups + _assets;
	}

	function holdersShare(uint256 _amount, uint256 _lockups)
		public
		view
		returns (uint256)
	{
		return _amount + _lockups;
	}

	function assetValue(uint256 _value, uint256 _lockups)
		public
		view
		returns (uint256)
	{
		return _value + _lockups;
	}

	function authenticationFee(uint256 _assets, uint256 _propertyAssets)
		public
		view
		returns (uint256)
	{
		return _assets + _propertyAssets - 1;
	}

	function marketApproval(uint256 _agree, uint256 _opposite)
		public
		view
		returns (bool)
	{
		return _agree + _opposite > 0;
	}

	function policyApproval(uint256 _agree, uint256 _opposite)
		public
		view
		returns (bool)
	{
		return _agree + _opposite > 0;
	}

	function marketVotingBlocks() public view returns (uint256) {
		return 10;
	}

	function policyVotingBlocks() public view returns (uint256) {
		return 20;
	}

	function abstentionPenalty(uint256 _count) public view returns (uint256) {
		return _count;
	}

	function lockUpBlocks() public view returns (uint256) {
		return 1;
	}
}
