import mongoose from 'mongoose';

const groupSchema = new mongoose.Schema({
  groupCode: { type: String, required: true, unique: true },
  groupName: { type: String, required: true }
});

const Group = mongoose.model('Group', groupSchema);

export default Group;