const Task = require("../model/Task");

const TaskService = {
    // Get all tasks:
    async getAllTasks() {
        try {
            const tasks = await Task.findAll();
            return tasks;
        } catch (err) {
            console.error(err.message);
        }
    },

    // Get task by id:
    async getTaskById(id) {
        try {
            const task = await Task.findByPk(id);
            if (!task) {
                throw new Error('Task not found.');
            }
            return task;
        } catch (err) {
            console.error(err.message);
        }
    },

    // Create task:
    async createTask({ name, description, endDate, completed, listOfTasksId, mainListId, mediaBlobId, taskPriorityId }) {
        try {
            const newTask = await Task.create({
                name,
                description,
                endDate,
                completed,
                listOfTasksId,
                mainListId,
                mediaBlobId,
                taskPriorityId
            });
            return newTask;
        } catch (err) {
            console.error(err.message);
        }
    },

    // Update task:
    async updateTask(id, updatedTaskData) {
        try {
            const task = await Task.findByPk(id);
            if (!task) {
                throw new Error("Task not found.");
            }
            await task.update(updatedTaskData);
            return task;
        } catch (err) {
            console.error(err.message);
        }
    },

    // Delete task:
    async deleteTask(id) {
        try {
            const task = await Task.findByPk(id);
            if (!task) {
                throw new Error("Task not found.");
            }
            return task;
        } catch (err) {
            console.error(err.message);

        }
    }
}

module.exports = TaskService;